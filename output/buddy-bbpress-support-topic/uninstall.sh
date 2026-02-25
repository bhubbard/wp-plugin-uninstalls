#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp-bbp-st-version'

# Delete Transients
wp transient delete '_bpbbst_welcome_screen'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_forum_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_forum_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_forum_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_forum_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_support_recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_support_recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_support_recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_support_recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_support_topic_intro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_support_topic_intro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_support_topic_intro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_support_topic_intro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_support_topic_tpl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_support_topic_tpl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_support_topic_tpl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_support_topic_tpl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_support_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_support_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_support_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_support_topic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bpbbpst_support_referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bpbbpst_support_referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bpbbpst_support_referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bpbbpst_support_referer'"
