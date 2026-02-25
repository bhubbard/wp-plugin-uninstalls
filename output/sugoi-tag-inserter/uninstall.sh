#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sugotag_insert_header'
wp option delete 'sugotag_insert_footer'
wp option delete 'sugotag_gtm_id'
wp option delete 'sugotag_aw_id'
wp option delete 'sugotag_ga_id'
wp option delete 'sugotag_gtm_enabled'
wp option delete 'sugotag_aw_enabled'
wp option delete 'sugotag_ga_enabled'
wp option delete 'sugotag_insert_hidden_header'
wp option delete 'sugotag_insert_hidden_footer'
wp option delete 'sugotag_cross_domain_enabled'
wp option delete 'sugotag_cross_domain_1st'
wp option delete 'sugotag_cross_domain_2nd'

