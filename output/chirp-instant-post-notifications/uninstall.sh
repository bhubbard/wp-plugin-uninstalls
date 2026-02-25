#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'chirpipn_%'"
wp option delete 'chirpipn_remove_unsubscribed_user'
wp option delete 'chirpipn_email_subject'
wp option delete 'chirpipn_email_template'
wp option delete 'chirpipn_email_footer'
wp option delete 'chirpipn_name_label'
wp option delete 'chirpipn_name_placeholder'
wp option delete 'chirpipn_email_placeholder'
wp option delete 'chirpipn_submit_button_text'
wp option delete 'chirpipn_email_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chirpipn_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chirpipn_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chirpipn_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chirpipn_subscribed'"
