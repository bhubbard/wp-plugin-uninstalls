#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sj-html-to-post-shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sj-html-to-post-shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sj-html-to-post-shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sj-html-to-post-shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sj-html-to-post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sj-html-to-post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sj-html-to-post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sj-html-to-post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sj-css-to-post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sj-css-to-post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sj-css-to-post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sj-css-to-post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sj-js-to-post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sj-js-to-post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sj-js-to-post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sj-js-to-post'"
