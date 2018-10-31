# **Provisioning Box**

## **Prerequisites**

* VirtualBox 5.2+
* Vagrant 2.1+

## **Getting Started**

### **Configuration**

* Configure the Virtual Machine setting the values of the [`settings.yml`](./settings.yml)

| Property                         | Description                                      | Example                 |
| ---------------------------------| ------------------------------------------------ | ----------------------- |
| virtual_machine_name             | Name of the Virtual Machine                      | dorefactor              |
| synced_folder_application_addons | Path that will be mapped to the Virtual Machine  | /home/vagrant/workspace |

### **Running**

* Creating the Virtual Machine. Go to the main directory where is located the `Vagrantfile` file

```sh
vagrant up
```

**Note. Default virtual machine user:password `vagrant:vagrant`.**
