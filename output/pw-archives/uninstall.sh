#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pw_archives_upgrade'
wp option delete 'PW_Archives_options'
wp option delete 'widget_pw_archives'
wp option delete 'pw_archives'

# Delete Transients
wp transient delete 'PW_Alerts'

