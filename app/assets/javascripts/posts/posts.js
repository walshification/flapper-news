angular.module('flapperNews')
.factory('posts', [
  '$http',
  function($http){
    var o = {
      posts: []
    };

    o.getAll = function() {
      return $http.get('/posts.json').success(function(data){
        angular.copy(data, o.posts);
      });
    };

    o.get = function(id) {
      return $http.get('/posts/' + id + '.json').then(function(resp){
        return resp.data;
      });
    };

    o.create = function(post) {
      return $http.post('/posts.json', post).success(function(data){
        o.posts.push(data);
      });
    };

    o.upvote = function(post) {
      return $http.put('/posts/' + post.id + '/upvote.json')
      .success(function(data){
          post.upvotes += 1;
      });
    };

    return o;
  }
])
