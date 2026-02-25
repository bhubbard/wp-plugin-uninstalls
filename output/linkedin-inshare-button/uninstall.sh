#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkedinshare_showonlyinsingle'
wp option delete 'linkedinshare_breakbefore'
wp option delete 'linkedinshare_breakafter'
wp option delete 'linkedinshare_displaystyle'
wp option delete 'linkedinshare_divstyling'
wp option delete 'linkedinshare_location'

