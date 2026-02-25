#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'threemasmart_position'
wp option delete 'threemasmart_id'
wp option delete 'threemasmart_floation_posi_rechts_nach_links'
wp option delete 'threemasmart_floating_posi_unten_nach_oben'
wp option delete 'threemasmart_floatingbutton_status'

