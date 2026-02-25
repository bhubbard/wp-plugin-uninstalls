#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lexiwbs_cod_restriction_enabled'
wp option delete 'lexiwbs_cod_min_total'
wp option delete 'lexiwbs_cod_max_total'

