#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'puipui_dbgt_form_option_library'
wp option delete 'puipui_dbgt_form_option_apikey'
wp option delete 'puipui_dbgt_form_option_safesearch'
wp option delete 'puipui_dbgt_form_option_apijeton'
wp option delete 'puipui_dbgt_form_option_powered'
wp option delete 'puipui_dbgt_form_option_imagesize'
wp option delete 'puipui_dbgt_form_option_legal'
wp option delete 'puipui_dbgt_form_option_cachingtime'
wp option delete 'dbgt_puipui_form_option_cachingtime'

