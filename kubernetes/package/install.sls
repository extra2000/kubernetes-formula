# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - ..config

kubernetes-present:
  pkg.installed:
    - pkgs:
      - kubelet
      - kubeadm
      - kubectl
