#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_assistant_google_webmaster'
wp option delete 'seo_assistant_google_analytical'
wp option delete 'seo_assistant_google_tag_manager'
wp option delete 'seo_assistant_meta_pixel'
wp option delete 'seo_assistant_fb_domain_verification'

