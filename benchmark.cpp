#include <iostream>
#include <random>
#include <chrono>
#include <string>
#include <cstdlib>

using namespace std;

const int times = 1000000;

template <typename E, typename D>
void benchmark(const string &name, E &&engine, D &&distribution)
{
    double sum = 0;
    auto start = chrono::system_clock::now();

    for(int i = 0; i < times; ++ i)
    {
        sum += distribution(engine);
    }

    auto end = chrono::system_clock::now();
    chrono::duration<double> diff = end - start;

    cout << name << endl;
    cout << "Sum:" << sum << endl;
    cout << "Time:" << diff.count() << "s" << endl;
}

int main()
{
    double sum = 0;
    srand(time(nullptr));
    auto start = chrono::system_clock::now();

    for(int i = 0; i < times; ++ i)
    {
        sum += (double)rand() / RAND_MAX;
    }

    auto end = chrono::system_clock::now();
    chrono::duration<double> diff = end - start;

    cout << "rand" << endl;
    cout << "Sum:" << sum << endl;
    cout << "Time:" << diff.count() << "s" << endl;

    random_device rd;
    uniform_real_distribution<double> dis(0.0, 1.0);

    benchmark("random_device", random_device(), dis);
    benchmark("minstd_rand0", minstd_rand0(rd()), dis);
    benchmark("minstd_rand", minstd_rand(rd()), dis);
    benchmark("mt19937", mt19937(rd()), dis);
    benchmark("mt19937_64", mt19937_64(rd()), dis);
    benchmark("ranlux24_base", ranlux24_base(rd()), dis);
    benchmark("ranlux48_base", ranlux48_base(rd()), dis);
    benchmark("ranlux24", ranlux24(rd()), dis);
    benchmark("ranlux48", ranlux48(rd()), dis);
    benchmark("knuth_b", knuth_b(rd()), dis);

    return 0;
}