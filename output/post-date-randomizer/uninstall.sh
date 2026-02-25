#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdr_date1'
wp option delete 'pdr_date2'
wp option delete 'pdr_randomize_posts'
wp option delete 'pdr_randomize_comments'
wp option delete 'pdr_post_type'
wp option delete 'pdr_set_modified_date'

# Delete Transients
wp transient delete 'pdr_randomize_notice'

