#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadsms_licensekey'
wp option delete 'leadsms_visibility'
wp option delete 'leadsms_appearance'

