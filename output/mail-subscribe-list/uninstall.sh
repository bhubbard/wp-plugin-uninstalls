#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sml_subscribe_widget_title'
wp option delete 'sml_subscribe_widget_prepend'
wp option delete 'sml_subscribe_widget_jsthanks'
wp option delete 'sml_subscribe_widget_thankyou'
wp option delete 'sml_subscribe_widget_showname'
wp option delete 'sml_subscribe_widget_nametxt'
wp option delete 'sml_subscribe_widget_nameholder'
wp option delete 'sml_subscribe_widget_emailtxt'
wp option delete 'sml_subscribe_widget_emailholder'
wp option delete 'sml_subscribe_widget_showsubmit'
wp option delete 'sml_subscribe_widget_submittxt'

