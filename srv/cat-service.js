
module.export = cds.service.impl(async function(){

    const {
        VSO, VSO2SO
    } = this.entities;

    this.before('CREATE', 'VSO', async (oReqData) =>{



        let aVSO  = await cds.run(SELECT.from(VSO).where({VSO: oReqData.data.VSO_ID}))

        if(aVSO[0] = "US"){

        }
        if(oReqData.data.VSO_ID === ""){
            return oReqData.error({code: "409", message: "VSO can not be empty"})
        }
    })
})