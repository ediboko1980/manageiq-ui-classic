class ApplicationHelper::Toolbar::CloudVolumeSnapshotsCenter < ApplicationHelper::Toolbar::Basic
  button_group('cloud_volume_snapshot_policy', [
    select(
      :cloud_volume_snapshot_policy_choice,
      nil,
      t = N_('Policy'),
      t,
      :enabled => false,
      :onwhen  => "1+",
      :items   => [
        button(
          :cloud_volume_snapshot_tag,
          'pficon pficon-edit fa-lg',
          N_('Edit tags for the selected items'),
          N_('Edit Tags'),
          :url_parms    => "main_div",
          :send_checked => true,
          :enabled      => false,
          :onwhen       => "1+"),
      ]
    ),
  ])
end
