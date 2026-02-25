#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeno_report_post-show_ip_to_client'
wp option delete 'zeno_report_post-show_on_blog'
wp option delete 'zeno_report_post-add_what'
wp option delete 'zeno_report_post-msg_min_length'
wp option delete 'zeno_report_post-require_login'
wp option delete 'zeno_report_post-spamfilter'
wp option delete 'zeno_report_post-subscribed_notification'
wp option delete 'zeno_report_post-email_notification'
wp option delete 'zeno_report_post-email_address'
wp option delete 'zeno_report_post-email_subject'
wp option delete 'zeno_report_post-email_body'
wp option delete 'zeno_report_post-post_types'
wp option delete 'disallowed_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zeno_report_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zeno_report_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zeno_report_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zeno_report_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zeno_report_post_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zeno_report_post_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zeno_report_post_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zeno_report_post_moderated'"
