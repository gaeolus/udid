'use strict';

const Service = require('egg').Service;

class Device extends Service {
  async list({ offset = 0, limit = 20 }) {
    return this.ctx.model.Device.findAndCountAll({
      offset,
      limit,
      
    });
  }

  async find(id) {
    const device = await this.ctx.model.Device.findById(id);
    if (!device) {
      this.ctx.throw(404, 'not found');
    }
    return device;
  }

  async create(device) {
    return this.ctx.model.Device.create(device);
  }

  async update({ id, updates }) {
    const device = await this.ctx.model.Device.findById(id);
    if (!device) {
      this.ctx.throw(404, 'not found');
    }
    return device.update(updates);
  }

  async del(id) {
    const device = await this.ctx.model.Device.findById(id);
    if (!device) {
      this.ctx.throw(404, 'not found');
    }
    return device.destroy();
  }
}

module.exports = Device;
