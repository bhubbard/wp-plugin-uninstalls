#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbs_options'
wp option delete 'simple-blog-stats-dismiss-notice'

# Delete Transients
wp transient delete 'sbs_word_count'
wp transient delete 'sbs_post_count'
wp transient delete 'sbs_page_count'
wp transient delete 'sbs_draft_count'
wp transient delete 'sbs_user_count'
wp transient delete 'sbs_comments_approved_count'
wp transient delete 'sbs_comments_moderated_count'
wp transient delete 'sbs_comments_total_count'
wp transient delete 'sbs_tax_posts_count'
wp transient delete 'online_status'

