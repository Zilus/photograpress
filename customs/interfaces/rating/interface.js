define(['core/CustomUIView'], function (UIView) {

  'use strict';

  return UIView.extend({
    template: 'rating/input',
    serialize: function () {
      var value = this.options.value;

      // This is needed because Handlebars doesn't have a for loop equivalent
      var scoresArray = [];
      for (var i = this.options.settings.get('max_score'); i > 0; i--) {
        scoresArray.push({
          i: i,
          checked: i === value
        });
      }

      return {
        value: value,
        amount: scoresArray,
        name: this.options.name,
        comment: this.options.schema.get('comment')
      };
    }
  });
});

