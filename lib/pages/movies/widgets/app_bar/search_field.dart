import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recruitment_task/logic/bloc/movies/movies_bloc.dart';
import 'package:flutter_recruitment_task/widgets/app_text_form_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchField extends StatelessWidget implements PreferredSizeWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onSubmitted(searchQuery) {
      BlocProvider.of<MoviesBloc>(context).add(SearchMovies(searchQuery));
    }

    TextEditingController _searchController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: AppTextFormField(
        height: 60,
        labelText: 'Search',
        controller: _searchController,
        suffixIcon: IconButton(
          padding: EdgeInsets.only(right: 15),
          onPressed: () => _onSubmitted(_searchController.text),
          icon: Icon(FontAwesomeIcons.search, size: 20),
        ),
        onFieldSubmitted: _onSubmitted,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
