#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vbean_meta_maid_htmlhead'
wp option delete 'vbean_meta_maid_htmlbeforeclosebody'
wp option delete 'vbean_meta_maid_mobilehtmlhead'
wp option delete 'vbean_meta_maid_mobilehtmlbeforeclosebody'
wp option delete 'vbean_meta_maid_desktophtmlhead'
wp option delete 'vbean_meta_maid_desktophtmlbeforeclosebody'

