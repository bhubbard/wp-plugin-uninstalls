#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mtags_keywords'
wp option delete 'mtags_description'
wp option delete 'mtags_update'
wp option delete 'mtags_opt_description'
wp option delete 'mtags_opt_keywords'
wp option delete 'mtags_opt_rsd'
wp option delete 'mtags_opt_wlwmanifest'
wp option delete 'mtags_opt_generator'
wp option delete 'mtags_opt_start_post_rel'
wp option delete 'mtags_opt_index_rel'
wp option delete 'mtags_opt_adjacent_posts_rel'

