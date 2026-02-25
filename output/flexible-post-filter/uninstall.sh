#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpf_button_background'
wp option delete 'fpf_thumbnail_border'
wp option delete 'fpf_button_text'
wp option delete 'fpf_button_hover'
wp option delete 'fpf_button_selection'
wp option delete 'jqs_button_alignment'
wp option delete 'jqs_select_categories'
wp option delete 'jqs_feature_enable_title'
wp option delete 'jqs_feature_enable_author'
wp option delete 'jqs_feature_enable_date'

