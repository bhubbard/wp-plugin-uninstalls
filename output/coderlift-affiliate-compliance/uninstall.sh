#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cl_aff_comp_target_urls'
wp option delete 'cl_aff_comp_content'
wp option delete 'cl_aff_comp_target_word1'
wp option delete 'cl_aff_comp_class'

