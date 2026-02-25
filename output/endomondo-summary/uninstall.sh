#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'endomondo-summary_endoid'
wp option delete 'endomondo-summary_method'
wp option delete 'endomondo-summary_cssloc'

