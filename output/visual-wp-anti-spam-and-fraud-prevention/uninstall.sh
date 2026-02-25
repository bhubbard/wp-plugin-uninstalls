#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vwpfp_fraud_prevention_threshold'
wp option delete 'vwpfp_max_transactions'

