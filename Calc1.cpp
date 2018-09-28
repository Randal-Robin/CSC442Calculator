#include <stdio.h>
#include <iostream>
#include <string>
#include <cstring>
#include <cmath>
#include <sstream>
#include <vector>

using namespace std;

//Create add function that takes in two float numbers and returns the sum of the two
float add(float num1, float num2)
{
	return num1 + num2;
} //end add function

//Create subtract function that takes in two float numbers and returns the first minus the second
float subtract(float num1, float num2)
{
	return num1 - num2;
} //end subtract function


//Creat multiply function that takes in two float numbers and returns the product of the two
float multiply(float num1, float num2)
{
	return num1 * num2;
} //end multiply function


//Create divide function that takes in two floats and divides the first by the second
float divide(float num1, float num2)
{
	return num1 / num2;
} //end divide function


//Create exponentiation function, that takes in a float as the number, and an integer for the exponent
float exponentiate(float num1, int exponent)
{
	float number = num1;
	
	for(int i = 0; i < exponent - 1; i++)
		number *= num1;
		
	return number;
} //end exponentiate function

//Create sqrt function
float squareRoot(float number)
{
	const float eps = 1.0e-15;
	float x = 1;
	
	for(;;)
	{
		float nx = (x + number / x) / 2;
		if(abs(x - nx) < eps)
			break;
			
		x = nx;
	}
	return x;
}

void print()
{
	
}

vector<string> split(string str, char delimiter)
{
	vector<string> internal;
	stringstream ss(str);
	string tok;
	
	while(getline(ss, tok, delimiter))
	{
		internal.push_back(tok);
	}
	
	return internal;
}

int main()
{
	vector<string> variables;
	vector<float> values;

	string sentence;
	cout << ">READY FOR INPUT" << endl;
	
	do
	{
		cout << ">";
		getline(cin, sentence);
		
		vector<string> sep = split(sentence, ' ');
		
		for(int i = 0; i < sep.size(); i++)
		{
			if(sep[i] == "mem")
				variables.push_back(sep[i+1]);
			else if(sep[i] == "load")
			{
				variables.push_back(sep[i+1]);
				float value;
				cout << ">ENTER VALUE FOR " << sep[i+1] << ": ";
				cin >> value;
				values.push_back(value);
			}
			else if(sep[i] == "print")
			{
				cout << ">VALUE OF " << sep[i+1] << " IS ";
				cout << values[i] << endl;
			}
			else
			{
				if(sep[i] == "+")
				{
					float number = add(values[values.back()], values[values.back()-1]);
					values.push_back(number);
				}
				else if(sep[i] == "-")
				{
					float number = subtract(values[values.back()], values[values.back()-1]);
					values.push_back(number);
				}
				else if(sep[i] == "*")
				{
					float number = multiply(values[values.back()], values[values.back()-1]);
					values.push_back(number);
				}
				else if(sep[i] == "/")
				{
					float number = divide(values[values.back()], values[values.back()-1]);
					values.push_back(number);
				}
				else if(sep[i] == "^")
				{
					float number = exponentiate(values[values.back()], values[values.back()-1]);
					values.push_back(number);
				}
				else if(sep[i] == "sqrt")
				{
					float number = squareRoot(values[values.back()]);
					values.push_back(number);
				}
				else
					return 0;

			}
		}
		
	}while(sentence != "stop");
	return 0;
}
