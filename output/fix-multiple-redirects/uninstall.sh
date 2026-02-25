#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'canonical_filters_to_remove'
wp option delete 'template_redirect_filters_to_remove'
wp option delete 'FIXMTPLREDIR_promote'
wp option delete 'isDebug'
wp option delete 'rewrite_rules_filters_to_remove'

