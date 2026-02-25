#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccf_cod_fee_enabled'
wp option delete 'wccf_cod_fee_label'
wp option delete 'wccf_cod_fee_type'
wp option delete 'wccf_cod_fee_amount'
wp option delete 'wccf_cod_fee_min_total'

