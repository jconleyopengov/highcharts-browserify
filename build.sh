
cat ./servershim.js > index.js
cat ./highcharts.js >> index.js
cat ./hc-exporting.js >> index.js
echo "module.exports = window.Highcharts;" >> index.js

echo "var $ = require('jquery');" > browser.js
cat ./highcharts.js >> browser.js
cat ./hc-exporting.js >> browser.js

#export patched jquery along with highcharts
echo "module.exports = window.Highcharts; module.exports.$ = $;" >> browser.js
