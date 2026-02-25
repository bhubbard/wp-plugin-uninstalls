#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fweo_emailoctopus_api_key'
wp option delete 'fweo_emailoctopus_show_all_pages'
wp option delete 'fweo_emailoctopus_google_analytics'
wp option delete 'fweo_emailoctopus_include_css'
wp option delete 'fweo_emailoctopus_include_font_awesome'
wp option delete 'fweo_emailoctopus_enable_wpa'
wp option delete 'fweo_emailoctopus_list_id'
wp option delete 'fweo_emailoctopus_extra_fields'
wp option delete 'woocommerce_fws-woo-emailoctopus_settings'
wp option delete 'fweo_mailing_lists'
wp option delete 'fweo_emailoctopus_gdpr_text'
wp option delete 'fweo_emailoctopus_clicky'
wp option delete 'fweo_emailoctopus_cookie_name'
wp option delete 'fweo_emailoctopus_text_newsletter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fweo_emailoctopus_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fweo_emailoctopus_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fweo_emailoctopus_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fweo_emailoctopus_subscribed'"
