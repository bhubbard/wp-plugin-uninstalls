#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorgtoc_active'
wp option delete 'jcorgtoc_duration'
wp option delete 'jcorgtoc_title'
wp option delete 'jcorgtoc_easingType'
wp option delete 'jcorgtoc_textlength'
wp option delete 'jcorgtoc_height'
wp option delete 'jcorgtoc_scroll'
wp option delete 'jcorgtoc_scroll_element'
wp option delete 'jcorgtoc_position'
wp option delete 'jcorgtoc_minimize'
wp option delete 'jcorgtoc_linkback'
wp option delete 'jcorgtoc_parenttagclass'

