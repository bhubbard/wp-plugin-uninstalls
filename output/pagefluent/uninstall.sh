#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpjpf_activate'
wp option delete 'wpjpf_transition_color'
wp option delete 'wpjpf_transition_activate'
wp option delete 'wpjpf_transition'
wp option delete 'wpjpf_loader_activate'
wp option delete 'wpjpf_loader'
wp option delete 'wpjpf_loader_color'

