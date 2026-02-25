#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roleWcAdcellProgramId'
wp option delete 'roleWcAdcellEventId'
wp option delete 'roleWcAdcellRetargeting'

