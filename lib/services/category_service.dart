import 'package:fluttertodolistsqfliteapp/models/category.dart';
import 'package:fluttertodolistsqfliteapp/repositories/repository.dart';

class CategoryService {
  Repository _repository;

  CategoryService(){
    _repository = Repository();
  }

  saveCategory(Category category) async{
  return await _repository.insertData('categories', category.categoryMap());
  }
}