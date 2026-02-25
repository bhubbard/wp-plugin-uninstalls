#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iris_translate_options'
wp option delete 'iris_translate_seo_options'
wp option delete 'iris_translate_url_translations'
wp option delete 'iris_custom_translations'
wp option delete 'iris_url_translations'

