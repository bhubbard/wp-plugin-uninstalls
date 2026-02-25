#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ovulationcalculator-group'
wp option delete 'oc_period_result'
wp option delete 'oc_fertile_result'
wp option delete 'lang_ovulation_calc_BackupLink'

