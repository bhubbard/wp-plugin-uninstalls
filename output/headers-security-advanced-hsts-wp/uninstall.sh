#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsts_csp_report_uri'
wp option delete 'disable_csp_header'
wp option delete 'disable_hsts_header'
wp option delete 'disable_x_content_type_options_header'
wp option delete 'disable_x_frame_options_header'
wp option delete 'hsts_max_age'
wp option delete 'hsts_include_subdomains'
wp option delete 'hsts_preload'
wp option delete 'hsts_csp'
wp option delete 'hsts_pp'
wp option delete 'hsts_x_frame_options'
wp option delete 'hsts_x_frame_options_allow_from_url'
wp option delete 'HEADERS_SECURITY_ADVANCED_HSTS_WP_PLUGIN_VERSION'
wp option delete 'hsts_x_frame_options_url_field'

