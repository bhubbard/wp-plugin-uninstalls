#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrcookies_cookie_name'
wp option delete 'mrcookies_cookie_lifetime'
wp option delete 'mrcookies_legal_notice'
wp option delete 'mrcookies_use_domain'
wp option delete 'mrcookies_style_type'
wp option delete 'mrcookies_style_text_color'
wp option delete 'mrcookies_style_link_color'
wp option delete 'mrcookies_style_background_color'
wp option delete 'mrcookies_style_border_color'
wp option delete 'mrcookies_style_custom_css'

