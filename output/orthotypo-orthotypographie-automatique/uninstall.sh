#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rules-punctuation'
wp option delete 'rules-quotation_marks'
wp option delete 'rules-percentage'
wp option delete 'rules-pleasantries_m'
wp option delete 'rules-pleasantries_mme'
wp option delete 'rules-pleasantries_mlle'
wp option delete 'rules-pleasantries_dr'
wp option delete 'rules-pleasantries_pr'
wp option delete 'rules-number_er'
wp option delete 'rules-number_nd'
wp option delete 'rules-number_e'
wp option delete 'global-filters'
wp option delete 'debug_options-replace_space_by_underscore'
wp option delete 'debug_options-use_red_color'

