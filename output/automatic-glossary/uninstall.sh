#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'red_glossaryOnlySingle'
wp option delete 'red_glossaryOnPages'
wp option delete 'red_glossaryID'

