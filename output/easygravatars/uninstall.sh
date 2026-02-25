#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eg_size'
wp option delete 'eg_rating'
wp option delete 'eg_defaulturl'
wp option delete 'eg_style_span'
wp option delete 'eg_style_img'
wp option delete 'eg_api_hook'

