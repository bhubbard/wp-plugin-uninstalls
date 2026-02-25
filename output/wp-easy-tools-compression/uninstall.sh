#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diet_apiusername'
wp option delete 'diet_apipassword'
wp option delete 'wtc_provider'
wp option delete 'tinypng_apikey'
wp option delete 'kraken_apikey'
wp option delete 'kraken_secretkey'
wp option delete 'wtc_media_compress'
wp option delete 'wtc_compress_css'
wp option delete 'wtc_compress_html'
wp option delete 'wtc_compress_js'
wp option delete 'wtc_compress_main_css'

