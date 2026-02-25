#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'russell_smtp'
wp option delete 'russell_design'
wp option delete 'russell_process'
wp option delete 'rscf'
wp option delete 'russell_message'

