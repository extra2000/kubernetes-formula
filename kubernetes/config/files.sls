# -*- coding: utf-8 -*-
# vim: ft=sls

kubernetes-repo-present:
  file.managed:
    - name: /etc/yum.repos.d/kubernetes.repo
    - source: salt://kubernetes/files/kubernetes.repo

kubernetes-k8s-conf-present:
  file.managed:
    - name: /etc/sysctl.d/k8s.conf
    - source: salt://kubernetes/files/k8s.conf

kubernetes-sysctl-reload:
  cmd.run:
   - name: sysctl --system
   - onchanges:  
     - file: kubernetes-k8s-conf-present
