#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disabled_pages_array'
wp option delete 'debug_mode'
wp option delete 'covid_banner_color'
wp option delete 'covid_banner_text_color'
wp option delete 'covid_banner_link_color'
wp option delete 'covid_banner_share'
wp option delete 'covid_banner_header_text'
wp option delete 'covid_banner_body_text'
wp option delete 'covid_banner_link_text'
wp option delete 'covid_banner_header_color'
wp option delete 'covid_banner_dismiss_color'

