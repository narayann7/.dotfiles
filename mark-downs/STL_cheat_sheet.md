# STL cheat sheet.

## Vector

initialization :

```cpp
vector<int> v;
vector<int> v(n); //n is size of array
vector<int> v={1,2,3,4};
vector<int> v={{1,2},{3,4},{5,6}};
vector<int> v(n,0); //to fill it will 0
v.assign(5, 10); //will assign 10 of size 5 , will work after declartion
```

functions :

```cpp
v.size();
v.resize(n);  // will resize the vector with n
v.empty();    // 0--false 1--true  
v.clear(); v.push_back(10); v.pop_back(); v.front(); v.back();
```

functions with iterator :

```cpp
v.fuction(x) 
// x will be iterator , iterator are basically pointers
vector<int>::iterator ptr = v.begin();
or auto ptr = v.begin();

reverse(v.begin(),v.end());
v.insert(v.begin(), 5);
v.insert(v.begin()+1, 6);
v.erase(v.begin());
v.erase(v.begin()+3,v.begin()+5); //will delete the elements
```

## Map

initialization :

```cpp
map<string,int> ex_map={{"ten",10},{"two",2}};
map<string,int> ex_map;
ex_map["ten"]=10; // if will add the element if respective key is not present 
ex_map.insert("two",2);

map - ordered data. increasing  order (by default)
unordered_map - no ordering . ex - unordered_map<string, int> order;
```

**Traversing** :

```cpp
map<int, int> ExampleMap={{1,2}{3,4}};

for (auto i : ExampleMap)
  cout << i.first << "   " << i.second

for (auto i = ExampleMap.begin(); i != ExampleMap.end(); i++)
        cout << i->first << "      " << i->second

iterator it = ExampleMap.begin();
while (it != ExampleMap.end())
    {
        // Accessing the key
        std::string word = it->first;
        // Accessing the value
        int count = it->second;
        std::cout << word << " :: " << count << std::endl;
        // iterator incremented to point next item
        it++;
    }

```

function :

 

```cpp

```