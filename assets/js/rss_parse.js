function latestNews(url){
  $.ajax({
    type: "GET",
    url: document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=1000&callback=?&q=' + encodeURIComponent(url),
    dataType: 'xml',
    error: function(){
      alert('Unable to load feed, Incorrect path or invalid feed');
    },
    success: function(xml){
      values = xml.responseData.feed.entries;
      console.log(values);
    }
  });
};

