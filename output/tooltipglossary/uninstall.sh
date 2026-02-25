#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'red_glossaryOnlySingle'
wp option delete 'red_glossaryOnPages'
wp option delete 'red_glossaryID'
wp option delete 'red_glossaryTooltip'
wp option delete 'red_glossaryDiffLinkClass'
wp option delete 'red_glossaryPermalink'
wp option delete 'red_glossaryFirstOnly'

