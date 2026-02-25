#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amwnlogos_name'
wp option delete 'amwnlogos_start_date'
wp option delete 'amwnlogos_end_date'
wp option delete 'amwnlogos_repeat'
wp option delete 'amwnlogos_logo_holder'
wp option delete 'amwnlogos_replacement_logo'
wp option delete 'amwnlogos_replacement_logo_retina'
wp option delete 'amwnlogos_show_credit'

