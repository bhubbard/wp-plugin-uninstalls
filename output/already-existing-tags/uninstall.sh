#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aet_turn_on'
wp option delete 'aet_block_manually_added_tags'
wp option delete 'aet_examine_post_title'
wp option delete 'aet_examine_post_content'
wp option delete 'aet_filter_by_category'
wp option delete 'aet_clean_uninstall'
wp option delete 'aet_included_categories'
wp option delete 'aet_automatic_tagging_included_categories'
wp option delete 'aet_automatic_tagging'

