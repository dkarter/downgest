const path = require('path');

module.exports = {
  entry: './web/elm/index.js',
  output: {
    path: path.resolve(__dirname, '..', '..', 'priv/static/js'),
    filename: 'app.bundle.js',
  },
  resolve: {
    extensions: ['.js', '.elm'],
  },
  module: {
    rules: [
      {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        loader: 'elm-webpack-loader',
      },
    ],
    noParse: /\.elm$/,
  },
};
