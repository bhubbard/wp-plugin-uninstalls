#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fancy_coming_soon_preview'
wp option delete 'fancy_coming_soon_uses_option'
wp option delete 'fancy_coming_soon_background_color'
wp option delete 'fancy_coming_soon_background_repeat'
wp option delete 'fancy_coming_soon_background_position'
wp option delete 'fancy_coming_soon_background_cover'
wp option delete 'fancy_coming_soon_background_image'
wp option delete 'fancy_coming_soon_page_custom_css'
wp option delete 'fancy_coming_soon_custom_code_header'
wp option delete 'fancy_coming_soon_content_color'
wp option delete 'fancy_coming_soon_plugin_logo'
wp option delete 'fancy_coming_soon_plugin_logo_force_https'
wp option delete 'fancy_coming_soon_percentage_completed'
wp option delete 'fancy_coming_soon_page_heading'
wp option delete 'fancy_coming_soon_page_content'
wp option delete 'fancy_coming_soon_mailchimp_form'
wp option delete 'fancy_coming_soon_mailchimp_form_url'
wp option delete 'fancy_coming_soon_social_twitter'
wp option delete 'fancy_coming_soon_social_facebook'
wp option delete 'fancy_coming_soon_social_instagram'
wp option delete 'fancy_coming_soon_social_whatsapp'
wp option delete 'fancy_coming_soon_social_email'
wp option delete 'fancy_coming_soon_page_footer'
wp option delete 'fancy_coming_soon_custom_code_footer'

# Delete Transients
wp transient delete 'fancy_coming_soon_admin_notice'

