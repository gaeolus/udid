'use strict';

const Controller = require('egg').Controller;

class DeviceController extends Controller {
  async index() {
    const ctx = this.ctx;
    const query = {
      limit: ctx.helper.parseInt(ctx.query.limit),
      offset: ctx.helper.parseInt(ctx.query.offset),
    };
    ctx.body = await ctx.service.device.list(query);
  }

  async show() {
    const ctx = this.ctx;
    ctx.body = await ctx.service.device.find(ctx.helper.parseInt(ctx.params.id));
  }

  async create() {
    const ctx = this.ctx;
    const device = await ctx.service.device.create(ctx.request.body);
    ctx.status = 201;
    ctx.body = device;
  }

  async update() {
    const ctx = this.ctx;
    const id = ctx.helper.parseInt(ctx.params.id);
    const body = ctx.request.body;
    ctx.body = await ctx.service.device.update({ id, updates: body });
  }

  async destroy() {
    const ctx = this.ctx;
    const id = ctx.helper.parseInt(ctx.params.id);
    await ctx.service.device.del(id);
    ctx.status = 200;
  }
}

module.exports = DeviceController;
