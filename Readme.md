# Using C Structs from Swift Example

[Companion Project](https://github.com/erickampman/CUnionPackage)


- Apparently you have to make a Swift package for the C code.
- ... and you can ONLY have C code in the package
- ... and it looks like include files have to go in <PackageRoot>/Sources/<PackageName>/include

This project makes use of the CUnionPackage.

You have to have both projects.

And you probably have to re-add the Package Dependency:
- File > Add Package Dependency > Add Local (bottom left)
- Select the package project directory
- Click "Add Package"
- Click "Add Package" (again)



