abstract class NewsStates{}
class InitialState extends NewsStates{}
class BottomNavBarState extends NewsStates{}
class NewsBusinessGetDataLoading extends NewsStates{}
class NewsBusinessGetDataSuccess extends NewsStates{}
class NewsBusinessGetDataError extends NewsStates{
  final String error;
  NewsBusinessGetDataError(this.error);
}
class NewsSportsGetDataLoading extends NewsStates{}
class NewsSportsGetDataSuccess extends NewsStates{}
class NewsSportsGetDataError extends NewsStates{
  final String error;
  NewsSportsGetDataError(this.error);
}
class NewsScienceGetDataLoading extends NewsStates{}
class NewsScienceGetDataSuccess extends NewsStates{}
class NewsScienceGetDataError extends NewsStates{
  final String error;
  NewsScienceGetDataError(this.error);
}
class NewsSearchGetDataLoading extends NewsStates{}
class NewsSearchGetDataSuccess extends NewsStates{}
class NewsSearchGetDataError extends NewsStates{
  final String error;
  NewsSearchGetDataError(this.error);
}