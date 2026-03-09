🇺🇸 [English](#syn-flood-detector) | 🇧🇷 [Português](#detector-de-syn-flood)

---

# SYN Flood Detector

A Bash script for real-time SYN Flood attack detection.

## Overview

SYN Flood is a type of DoS (Denial of Service) attack that exploits the three-way handshake. The attacker sends a high volume of SYN packets but deliberately never completes the handshake, exhausting the server's resources and preventing legitimate connections from being established. This script monitors incoming SYN packets in real-time using `tcpdump` and triggers an alert when the count exceeds a threshold.

## Dependencies

Fedora/RHEL/CentOS:
```bash
sudo dnf install tcpdump
```

Ubuntu/Debian:
```bash
sudo apt install tcpdump
```

## Configuration

| Variable | Default | Description |
|---|---|---|
| `THRESHOLD` | `250` | SYN count to trigger an alert |
| `COOLDOWN` | `2` | Seconds between each check |
| `LOG_FILE` | `/var/log/dos-detection.log` | Log output path |

## Usage

```bash
sudo ./synflood-monitor.sh
```

---
---

# Detector de SYN Flood

Script Bash para detecção em tempo real de ataques SYN Flood.

## Visão Geral

SYN Flood é um tipo de ataque DoS (Negação de Serviço) que explora o three-way handshake. O atacante envia um alto volume de pacotes SYN mas deliberadamente nunca conclui o handshake, esgotando os recursos do servidor e impedindo que conexões legítimas sejam estabelecidas. Este script monitora pacotes SYN em tempo real utilizando `tcpdump` e emite um alerta quando a contagem ultrapassa o limite.

## Dependências

Fedora/RHEL/CentOS:
```bash
sudo dnf install tcpdump
```

Ubuntu/Debian:
```bash
sudo apt install tcpdump
```

## Configuração

| Variável | Padrão | Descrição |
|---|---|---|
| `THRESHOLD` | `250` | Contagem de SYN para disparar o alerta |
| `COOLDOWN` | `2` | Segundos entre cada verificação |
| `LOG_FILE` | `/var/log/dos-detection.log` | Caminho do arquivo de log |

## Uso

```bash
sudo ./synflood-monitor.sh
```

